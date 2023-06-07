
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
(assert (or (is-Cons l3) (= l2 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l2 l3)) )
(assert (not (= l1 l0)) )
(assert (not (= l3 l1)) )
(assert (or (= l1 Nil) (= l1 l1) (= l3 l0) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 l3) (is-Nil l2) (= l2 Nil) (= l1 l1)) )
(check-sat)
