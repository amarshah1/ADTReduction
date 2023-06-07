
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
(assert (and (is-Cons Nil) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (is-Cons l0) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons Nil) (= l3 l0)) )
(assert (= l0 Nil) )
(assert (and (is-Cons l2) (= l1 Nil) (= l3 l2) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
