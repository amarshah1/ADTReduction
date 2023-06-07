
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
(assert (not (= l3 Nil)) )
(assert (= l2 l2) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (= l3 l1) )
(assert (or (is-Nil l1) (= l2 l2)) )
(assert (or (is-Cons Nil) (is-Cons l3) (= l2 l2)) )
(assert (and (= l3 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)