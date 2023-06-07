
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
(assert (or (= l2 Nil) (= l1 Nil) (is-Cons l2)) )
(assert (and (is-Cons l2) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
