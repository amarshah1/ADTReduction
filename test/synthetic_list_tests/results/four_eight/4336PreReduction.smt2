
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
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (is-Cons l3)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l0 l2) (= l1 Nil) (is-Cons l3) (= l0 Nil)) )
(check-sat)
