
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
(assert (and (= l1 l1) (is-Cons l3)) )
(assert (not (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (= l0 l3) )
(assert (is-Cons Nil) )
(assert (not (= l3 l2)) )
(assert (or (is-Nil l2) (= l2 Nil) (is-Cons l3) (is-Cons Nil)) )
(assert (is-Cons l0) )
(check-sat)
