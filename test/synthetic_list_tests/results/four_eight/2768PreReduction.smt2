
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (not (= l0 l3)) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l2) (is-Cons l3) (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
